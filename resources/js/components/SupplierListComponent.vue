<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card card-default">
                    <div class="card-header">
                        Proveedores
                        <button onclick="window.location.href = '/supplier/create'" class="btn btn-primary text-right">Crear</button>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li v-for="value in data"><a :href="`/supplier/${value.id}/edit`">{{value.name}}</a></li>
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
            console.log(this.requestData)
        },
        computed: {
            data() {
                return JSON.parse(this.requestData)
            }
        }
    }
</script>
