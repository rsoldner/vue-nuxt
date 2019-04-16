
<template>
    <section class="recipes">
        <Recipe 
            v-for="recipe in recipes"
            :key="recipe.id"
            :id="recipe.id"
            :title="recipe.title"
            :text="recipe.text"
            :thumbnail="recipe.thumbnail"
        />
    </section>
</template>


<script>
import Recipe from '@/components/Recipe'

export default {
    components: {
        Recipe
    },
    asyncData() {
        return new Promise((resolve,reject) => {
            setTimeout(() =>  {
                resolve({
                    recipes: [
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

                    ]
                })
            }, 1500)
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
