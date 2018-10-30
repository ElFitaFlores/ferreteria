<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">Producto</div>

                    <div class="card-body" v-if="item">
                        <form action="" v-on:submit.prevent="save()">
                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <input type="text" name="name" id="name" class="form-control" v-model="item.name">
                            </div>
                            <div class="form-group">
                                <label for="quantity">Cantidad</label>
                                <input type="text" name="quantity" id="quantity" class="form-control" v-model="item.quantity">
                            </div>
                            <div class="form-group">
                                <label for="price">Precio</label>
                                <input type="text" name="price" id="price" class="form-control" v-model="item.price">
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                            <button class="btn btn-danger" v-on:click="borrar">Eliminar</button>
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
            item: null
        }),
        mounted() {
            this.item = JSON.parse(this.requestItem);
        },
        methods: {
            async save(){
                if(this.item.id){
                    await axios.put('/product/'+this.item.id, qs.stringify(this.item)).then((response) => {
                        this.redirect();
                    });
                }else{
                    await axios.post('/product', qs.stringify(this.item)).then((response) => {
                        this.redirect();
                    });
                }
            },
            async borrar(){
                await axios.delete('/product/'+this.item.id).then((response) => {
                    this.redirect();
                });
            },
            redirect(){
                window.location.href = '/product';
            }
        },
        props: ['requestItem'],
    }
</script>

<style scoped>

</style>