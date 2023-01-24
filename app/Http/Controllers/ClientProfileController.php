<?php

namespace App\Http\Controllers;

use App\Models\ClientProfile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ClientProfileController extends Controller
{
    /**
     * Muestra el listado de todos los clientes
     */
    public function index()
    {
        return ClientProfile::all();
    }

    /**
     * Guarda la información de un nuevo cliente.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|unique:client_profiles|email',
            'phone_number' => 'required',
            'city' => 'required',
        ]);
 
        if ($validator->fails()) {
            return ['status' => false, 'message' => 'Valide que todos los campos esten completos y vuelva a intentar.', 'errors' => $validator->errors()];
        }

        $client = ClientProfile::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone_number' => $request->phone_number,
            'city' => $request->city
        ]);
        return ['status' => true, 'client' => $client];
    }

    /**
     * Muestra la información de un cliente según el id.
     */
    public function show($id)
    {
        $client = ClientProfile::find($id);
        $client->pets;
        return $client;
    }

    /**
     * Actualiza la información del cliente según el id.
     */
    public function update(Request $request, $id)
    {
        ClientProfile::where('id', $id)->update($request->except(['_method']));
        return ['status' => true, 'client' => ClientProfile::find($id)];
    }

    /**
     * Elimina el cliente según el id.
     */
    public function destroy($id)
    {
        ClientProfile::where('id', $id)->delete();
        return ['status' => true, 'message' => 'Client deleted successfuly.'];
    }
}
