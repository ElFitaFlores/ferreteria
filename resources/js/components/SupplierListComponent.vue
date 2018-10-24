<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">Proveedores</div>
                    <div class="card-body">
                        <ul>
                            <li v-for="(value, key) in requestData">{{value}}</li>
                        </ul>
                    </div>
                </div>
            </div>
    </div>
    </div>
</template>

<script>
    export default {
        props: ['requestData'],
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
