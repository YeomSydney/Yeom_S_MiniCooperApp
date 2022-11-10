export default {
    name: 'eachCarInfo',

    props: {
        eachCar: Object
    },

    template:
    `
    <section>
        <h3>{{ eachCar.name }}</h3>
    </section>
    `

}