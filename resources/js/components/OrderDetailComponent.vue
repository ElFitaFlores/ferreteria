<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">Pedido</div>

                    <div class="card-body" v-if="item">
                        <form action="" v-on:submit.prevent="save()">
                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <input type="text" name="name" id="name" class="form-control" v-model="item.name">
                            </div>
                            <div class="form-group">
                                <label for="nit">NIT</label>
                                <input type="text" name="nit" id="nit" class="form-control" v-model="item.nit">
                            </div>
                            <div class="form-group">
                                <label for="address">Direccion</label>
                                <input type="text" name="address" id="address" class="form-control" v-model="item.address">
                            </div>
                            <div class="form-group">
                                <label for="product">Producto</label>
                                <select name="product" id="product">
                                    <option v-for="product in products" value="product.id">{{product.name}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="paid">Pagado</label>
                                <input type="checkbox" name="paid" id="paid" class="form-control"  v-model="item.paid">
                            </div>
                            <div class="form-group" v-if="item.paid">
                                <label for="serie">Factura</label>
                                <input type="text" name="serie" id="serie" class="form-control" v-model="item.serie">
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                            <button class="btn btn-danger" v-on:click="borrar" v-if="item.id">Eliminar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "SupplierDetailComponent",
        data: () => ({
            item: null,
            products: null,
        }),
        mounted() {
            this.item = JSON.parse(this.requestItem);
            this.products = JSON.parse(this.requestProducts);
        },
        methods: {
            async save(){
                this.redirect()
            },
            redirect(){
                window.location.href = '/order/create';
            }
        },
        props: ['requestItem', 'requestProducts'],
    }
</script>

<style scoped>

</style>