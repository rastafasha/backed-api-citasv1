<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            RoleAndPermissionSeeder::class,
            SpecialitySeeder::class,
            LocationSeeder::class,
            PubSeeder::class,
            DoctorScheduleDaySeeder::class,
            DoctorScheduleHourSeeder::class,
            DoctorScheduleJoinHourSeeder::class,
            UserSeeder::class,
            
            //evitar que se repitan los datos y
            //  se carque el sistema reescribiendo lo que existe
            // PatientSeeder::class,
            // TiposDePagoSeeder::class,
            // AppointmentSeeder::class,
            // SettingeneralSeeder::class,
            // PresupuestoSeeder::class,



        ]);
    }
}
