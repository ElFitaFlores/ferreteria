<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">Proveedor</div>

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
                                <label for="phone">Telefono</label>
                                <input type="text" name="phone" id="phone" class="form-control" v-model="item.phone">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" class="form-control"  v-model="item.email">
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
                    await axios.put('/supplier/'+this.item.id, qs.stringify(this.item)).then((response) => {
                        window.location.href = '/supplier';
                    });
                }else{
                    await axios.post('/supplier', qs.stringify(this.item)).then((response) => {
                        window.location.href = '/supplier';
                    });
                }
            },
            async borrar(){
                await axios.delete('/supplier/'+this.item.id).then((response) => {
                    window.location.href = '/supplier';
                });
            }
        },
        props: ['requestItem'],
    }
</script>

<style scoped>

</style>