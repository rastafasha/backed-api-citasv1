<?php

namespace App\Policies;

use App\Models\Speciality;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class SpecialityPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        // dd("Ya");
       if($user->can('list_speciality')){
        return false;
       }
       return false;
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Speciality  $speciality
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Speciality $model = null)
    {
        //
        if($user->can('list_speciality')){
            return false;
           }
           return false;
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        if($user->can('register_specialty')){
            return false;
           }
           return false;
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Speciality  $speciality
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Speciality $model = null)
    {
        if($user->can('edit_specialty')){
            return false;
           }
           return false;
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Speciality  $speciality
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Speciality $model = null)
    {
        if($user->can('delet_specialty')){
            return false;
           }
           return false;
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Speciality  $speciality
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, Speciality $model = null)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Speciality  $speciality
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Speciality $speciality)
    {
        //
    }
}
