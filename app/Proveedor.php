<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $ID
 * @property string $NOMBRE
 * @property string $NIT
 * @property string $TELEFONO
 * @property string $EMAIL
 * @property Catalogo[] $catalogos
 * @property Comprod[] $comprods
 * @property Pedido[] $pedidos
 * @property Producto[] $productos
 */
class Proveedor extends Model
{
    /**
     * The table associated with the model.
     * 
     * @var string
     */
    protected $table = 'proveedor';

    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'ID';

    /**
     * Indicates if the IDs are auto-incrementing.
     * 
     * @var bool
     */
    public $incrementing = true;

    /**
     * @var array
     */
    protected $fillable = ['NOMBRE', 'NIT', 'TELEFONO', 'EMAIL'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function catalogos()
    {
        return $this->hasMany('App\Catalogo', 'PROVEEDOR_ID');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function comprods()
    {
        return $this->hasMany('App\Comprod', 'PROVEEDOR_ID');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pedidos()
    {
        return $this->hasMany('App\Pedido', 'PROVEEDOR_ID');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function productos()
    {
        return $this->belongsToMany('App\Producto', null, 'PROVEEDOR_ID', 'PRODUCTO_ID');
    }
}
