<?php

use App\Models\Role;
use App\Models\User;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name', 250);
            $table->string('surname',  250);
            $table->string('mobile',  50);
            $table->timestamp('birth_date')->nullable();
            $table->tinyint('gender');
            $table->longtext('education')->nullable();
            $table->longtext('designation')->nullable();
            $table->text('address')->nullable();
            $table->string('avatar')->nullable();
            $table->string('n_doc', 50);
            
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');

            $table->enum('rolename', [User::SUPERADMIN, User::GUEST])->default(User::GUEST);

            $table->enum('role', [
                'MEMBER', 'GUEST'
                ])->default('GUEST');

            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();

            // Provider IDs
            $table->unsignedBigInteger('speciality_id')->nullable();
            $table->unsignedBigInteger('location_id')->nullable();

            // Foreign keys for provider relationships
            $table->foreign('speciality_id')->references('id')->on('specialities')->nullOnDelete();
            $table->foreign('location_id')->references('id')->on('locations')->nullOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
