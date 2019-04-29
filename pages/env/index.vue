
<template>
    <section class="recipes">
        <Env :apiData="apiData" />
    </section>
</template>

<script>
import Env from '@/components/Env'

export default {
    components: {
        Env
    },
    asyncData({ app }) {
        return new Promise((resolve,reject) => {
            setTimeout(() =>  {
                resolve({
                    apiData: {
                        apiUrl: app.$env.API_URL
                    },
                })
            }, 150)
        })
    }
}
</script>

<style scoped>
.recipes {
    display: flex;
    flex-flow: row wrap;
    justify-content: center;
    align-items: center;
}
</style>

