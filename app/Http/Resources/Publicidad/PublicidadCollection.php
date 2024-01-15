<?php

namespace App\Http\Resources\Publicidad;

use Illuminate\Http\Resources\Json\ResourceCollection;

class PublicidadCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "data"=> PublicidadResource::collection($this->collection)
        ];
    }
}
