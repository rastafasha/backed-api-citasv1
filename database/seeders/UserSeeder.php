<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    // public function run()
    // {
        

    //     // Create oldsuperadmin
    //     $superadminOld = User::create([
    //         'name' => 'Super Admin',
    //         'surname' => 'Admin',
    //         'email' => 'superadmin@superadmin.com',
    //         'password' => Hash::make('password'),
    //         'email_verified_at' => now(),
    //         'gender' => 1,
    //         'mobile' => '1234567893',
    //         'n_doc' => '1245319599',
    //     ]);
    //     $superadminOld->assignRole('SUPERADMIN');
    //     // Create superadmin
    //     $superadmin = User::create([
    //         'name' => 'Super Admin',
    //         'surname' => 'Admin',
    //         'email' => 'superadmin@example.com',
    //         'password' => Hash::make('password'),
    //         'email_verified_at' => now(),
    //         'gender' => 1,
    //         'mobile' => '1234567893',
    //         'n_doc' => '1245319599',
    //     ]);
    //     $superadmin->assignRole('SUPERADMIN');
    //     // Create admin
    //     $admin = User::create([
    //         'name' => 'Admin',
    //         'surname' => 'Howard',
    //         'email' => 'admin@example.com',
    //         'password' => Hash::make('password'),
    //         'email_verified_at' => now(),
    //         'gender' => 1,
    //         'mobile' => '1234567893',
    //         'n_doc' => '1245319599',
    //     ]);
    //     $admin->assignRole('ADMIN');

    //     // Create manager
    //     $doctor = User::create([
    //         'name' => 'John Doctor',
    //         'surname' => 'Doe',
    //         'email' => 'doctor@example.com',
    //         'password' => Hash::make('password'),
    //         'gender' => 1,
    //         'mobile' => '1234567893',
    //         'email_verified_at' => now(),
    //         'n_doc' => '1497842694',
    //     ]);
    //     $doctor->assignRole('DOCTOR');

    //     // Create BCBAs
    //     $recepcion = User::create([
    //         'name' => 'Sarah ',
    //         'surname' => 'Howard',
    //         'email' => 'recepcion@example.com',
    //         'password' => Hash::make('password'),
    //         'gender' => 2,
    //         'mobile' => '1234567890',
    //         'n_doc' => '3309871234',
    //     ]);
    //     $recepcion->assignRole('RECEPCION');

    //     $laboratorio = User::create([
    //         'name' => 'Mike BCBA',
    //         'surname' => 'Smith',
    //         'email' => 'laboratorio@example.com',
    //         'password' => Hash::make('password'),
    //         'gender' => 1,
    //         'mobile' => '1234567891',
    //         'n_doc' => '3333312334',
    //     ]);
    //     $laboratorio->assignRole('LABORATORIO');

    //     // Create RBTs
    //     $asistente = User::create([
    //         'name' => 'Alice RBT',
    //         'surname' => 'Brown',
    //         'email' => 'asistente@example.com',
    //         'password' => Hash::make('password'),
    //         'gender' => 2,
    //         'mobile' => '1234567892',
    //         'n_doc' => '3333345454',
    //     ]);
    //     $asistente->assignRole('ASISTENTE');

    //     $personal = User::create([
    //         'name' => 'Bob RBT',
    //         'surname' => 'Johnson',
    //         'email' => 'personal@example.com',
    //         'password' => Hash::make('password'),
    //         'gender' => 1,
    //         'mobile' => '1234567893',
    //         'n_doc' => '5421369874',
    //     ]);
    //     $personal->assignRole('PERSONAL');

    //     $enfermera = User::create([
    //         'name' => 'Bob RBT',
    //         'surname' => 'Johnson',
    //         'email' => 'enfermera@example.com',
    //         'password' => Hash::make('password'),
    //         'gender' => 1,
    //         'mobile' => '1234567893',
    //         'n_doc' => '5421369874',
    //     ]);
    //     $enfermera->assignRole('ENFERMERA');
    // }

    public function run()
    {
        $users = [

            // [
            //     "rolename" => User::SUPERADMIN,
            //     "name" => "super",
            //     'surname' => 'Johnson',
            //     "email" => "superadmin@superadmin.com",
            //     'gender' => 1,
            //     'mobile' => '1234567893',
            //     'n_doc' => '5421369874',
            //     "password" => bcrypt("password"),
            //     "email_verified_at" => now(),
            //     "created_at" => now(),

            // ],

            [
                "rolename" => User::ADMIN,
                "name" => "admin",
                'surname' => 'Johnson',
                "email" => "admin@admin.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::DOCTOR,
                "name" => "doctor",
                'surname' => 'Johnson',
                "email" => "doctor@doctor.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::LABORATORIO,
                "name" => "laboratorio",
                'surname' => 'Johnson',
                "email" => "laboratorio@laboratorio.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::RECEPCION,
                "name" => "recepcion",
                'surname' => 'Johnson',
                "email" => "recepcion@recepcion.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::PERSONAL,
                "name" => "personal",
                'surname' => 'Johnson',
                "email" => "personal@personal.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::ENFERMERA,
                "name" => "enfermera",
                'surname' => 'Johnson',
                "email" => "enfermera@enfermera.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::ASISTENTE,
                "name" => "asistente",
                'surname' => 'Johnson',
                "email" => "asistente@asistente.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
            [
                "rolename" => User::GUEST,
                "name" => "invitado",
                'surname' => 'Johnson',
                "email" => "invitado@invitado.com",
                'gender' => 1,
                'mobile' => '1234567893',
                'n_doc' => '5421369874',
                "password" => bcrypt("password"),
                "email_verified_at" => now(),
                "created_at" => now(),

            ],
        ];

        foreach ($users as $user) {

            $user = User::create($user);
        }
    }
}
