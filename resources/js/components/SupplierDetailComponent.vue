<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">Proveedor</div>

                    <div class="card-body">
                        <form action="/supplier" method="post">
                            <input type="hidden" name="_token" :value="csrf">
                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <input type="text" name="name" id="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="nit">NIT</label>
                                <input type="text" name="nit" id="nit" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="phone">Telefono</label>
                                <input type="text" name="phone" id="phone" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "ProveedorDetailComponent",
        data: () => ({
            csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
        }),
    }
</script>

<style scoped>

</style>