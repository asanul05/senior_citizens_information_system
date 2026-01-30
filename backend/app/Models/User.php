<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasApiTokens;

    /**
     * The table associated with the model.
     */
    protected $table = 'admin_users';

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'employee_id',
        'username',
        'password_hash',
        'first_name',
        'middle_name',
        'last_name',
        'extension',
        'gender_id',
        'position',
        'role_id',
        'branch_id',
        'barangay_id',
        'contact_number',
        'email',
        'is_active',
        'last_login',
    ];

    /**
     * The attributes that should be hidden for serialization.
     */
    protected $hidden = [
        'password_hash',
        'remember_token',
    ];

    /**
     * Get the password attribute for authentication.
     */
    public function getAuthPassword()
    {
        return $this->password_hash;
    }

    /**
     * Get the attributes that should be cast.
     */
    protected function casts(): array
    {
        return [
            'last_login' => 'datetime',
            'is_active' => 'boolean',
            'created_at' => 'datetime',
            'updated_at' => 'datetime',
        ];
    }

    /**
     * Get the user's full name.
     */
    public function getFullNameAttribute(): string
    {
        $name = $this->first_name;
        if ($this->middle_name) {
            $name .= ' ' . $this->middle_name;
        }
        $name .= ' ' . $this->last_name;
        if ($this->extension) {
            $name .= ' ' . $this->extension;
        }
        return $name;
    }

    /**
     * Get the role that owns the user.
     */
    public function role()
    {
        return $this->belongsTo(UserRole::class, 'role_id');
    }

    /**
     * Get the branch that owns the user.
     */
    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }

    /**
     * Get the barangay that owns the user.
     */
    public function barangay()
    {
        return $this->belongsTo(Barangay::class, 'barangay_id');
    }

    /**
     * Check if user is Main Admin (role_id = 1)
     */
    public function isMainAdmin(): bool
    {
        return $this->role_id === 1;
    }

    /**
     * Check if user is Branch Admin (role_id = 2)
     */
    public function isBranchAdmin(): bool
    {
        return $this->role_id === 2;
    }

    /**
     * Check if user is Barangay Admin (role_id = 3)
     */
    public function isBarangayAdmin(): bool
    {
        return $this->role_id === 3;
    }

    /**
     * Get accessible barangay IDs based on role.
     */
    public function getAccessibleBarangayIds(): array
    {
        if ($this->isMainAdmin()) {
            return Barangay::pluck('id')->toArray();
        }

        if ($this->isBranchAdmin()) {
            return $this->branch->barangays()->pluck('barangays.id')->toArray();
        }

        if ($this->isBarangayAdmin()) {
            return [$this->barangay_id];
        }

        return [];
    }
}
