export default {
    name: 'TheMiniWhite',

    props: {
        car: Object
    },

    template:
    `
        <img :src='"images/" + car.biopic' alt="hero image" width="150">
        <div class="red-bumper"></div>
        <h5>{{ hero.name }}</h5>

    `,

    methods: {
        
    }
}