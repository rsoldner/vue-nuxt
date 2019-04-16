
<template>
    <section class="single-recipe">
        <h1>{{ recipe.title }}</h1>
        <div>
            <img class="recipe-image" :src="recipe.thumbnail" :alt="recipe.title">
        </div>
        <p>{{recipe.text}}</p>
    </section>
</template>

<script>
export default {
    asyncData(context) {
        return new Promise((resolve,reject) => {
            setTimeout(() =>  {
                resolve({
                    recipe: [
                        {
                            id: "1",
                            title: "Veggies are yummy",
                            text: "Staying healthy is easy",
                            thumbnail: "https://www.incimages.com/uploaded_files/image/970x450/getty_855098134_353411.jpg"
                        },
                        {
                            id: "2",
                            title: "Spaghetti & HotDawgs",
                            text: "Forget the veggies!",
                            thumbnail: "https://amp.thisisinsider.com/images/5ad792ffbd967146008b45d9-960-720.jpg"
                        }

                    ].find(el => el.id === context.params.id )
                })
            }, 1500)
        })
    }
}
</script>

<style scoped>
.single-recipe {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    padding: 30px;
}
.recipe-image {
    width:100% ;
}
</style>
