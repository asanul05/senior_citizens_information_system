<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Main Admin (if not exists)
        if (!User::where('username', 'mainadmin')->exists()) {
            User::create([
                'employee_id' => 'EMP001',
                'username' => 'mainadmin',
                'password_hash' => Hash::make('admin123'),
                'first_name' => 'Main',
                'last_name' => 'Administrator',
                'position' => 'OSCA Administrator',
                'role_id' => 1,  // OSCA Main
                'barangay_id' => null,
                'branch_id' => 1,
                'email' => 'admin@osca.gov.ph',
                'is_active' => true,
            ]);
        }

        // Branch/FO Admins
        $branchAdmins = [
            ['employee_id' => 'EMP101', 'username' => 'foadmin1', 'password' => 'foadmin123', 'first_name' => 'Field Office', 'last_name' => 'Admin One', 'position' => 'FO Admin', 'email' => 'foadmin1@osca.gov.ph', 'branch_id' => 1],
            ['employee_id' => 'EMP102', 'username' => 'foadmin2', 'password' => 'foadmin123', 'first_name' => 'Field Office', 'last_name' => 'Admin Two', 'position' => 'FO Admin', 'email' => 'foadmin2@osca.gov.ph', 'branch_id' => 2],
        ];

        foreach ($branchAdmins as $admin) {
            if (!User::where('username', $admin['username'])->exists()) {
                User::create([
                    'employee_id' => $admin['employee_id'],
                    'username' => $admin['username'],
                    'password_hash' => Hash::make($admin['password']),
                    'first_name' => $admin['first_name'],
                    'last_name' => $admin['last_name'],
                    'position' => $admin['position'],
                    'role_id' => 2,  // Branch/FO Admin
                    'barangay_id' => null,
                    'branch_id' => $admin['branch_id'],
                    'email' => $admin['email'],
                    'is_active' => true,
                ]);
            }
        }

        // Barangay Admins
        $barangayAdmins = [
            ['employee_id' => 'BRGY001', 'username' => 'barangay_tetuan', 'password' => 'brgy123', 'first_name' => 'Barangay', 'last_name' => 'Tetuan Admin', 'barangay_id' => 1, 'email' => 'tetuan@osca.gov.ph'],
            ['employee_id' => 'BRGY002', 'username' => 'barangay_ayala', 'password' => 'brgy123', 'first_name' => 'Barangay', 'last_name' => 'Ayala Admin', 'barangay_id' => 2, 'email' => 'ayala@osca.gov.ph'],
            ['employee_id' => 'BRGY003', 'username' => 'barangay_calarian', 'password' => 'brgy123', 'first_name' => 'Barangay', 'last_name' => 'Calarian Admin', 'barangay_id' => 3, 'email' => 'calarian@osca.gov.ph'],
        ];

        foreach ($barangayAdmins as $admin) {
            if (!User::where('username', $admin['username'])->exists()) {
                User::create([
                    'employee_id' => $admin['employee_id'],
                    'username' => $admin['username'],
                    'password_hash' => Hash::make($admin['password']),
                    'first_name' => $admin['first_name'],
                    'last_name' => $admin['last_name'],
                    'position' => 'Barangay Staff',
                    'role_id' => 3,  // Barangay Admin
                    'barangay_id' => $admin['barangay_id'],
                    'branch_id' => 1,
                    'email' => $admin['email'],
                    'is_active' => true,
                ]);
            }
        }

        $this->command->info('Admin users seeded successfully!');
        $this->command->table(
            ['Username', 'Password', 'Role'],
            [
                ['mainadmin', 'admin123', 'OSCA Main'],
                ['foadmin1', 'foadmin123', 'Branch/FO Admin'],
                ['foadmin2', 'foadmin123', 'Branch/FO Admin'],
                ['barangay_tetuan', 'brgy123', 'Barangay Admin'],
                ['barangay_ayala', 'brgy123', 'Barangay Admin'],
                ['barangay_calarian', 'brgy123', 'Barangay Admin'],
            ]
        );
    }
}
