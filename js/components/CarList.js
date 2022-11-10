export default {
    name: 'CarList',

    props: {
        car: Object
    },

    template:
    `
        <section class="carSelection">
            <div class="carsList">
                <img :src='"images/" + car.thumbnail' alt="car image" class="miniCars">

                <div class="eachCar">
                    <p>Available</p>
                    <h3>{{ car.name }}</h3>
                    <h4>{{ car.date }}</h4>
                    <h5>{{ car.price }}</h5>
                    <h6>All Inclusive Price</h6>
                </div>

                <div class="btn-info">
                    <button @click="getCarInfo ^= true">View More</button>
                </div>
        
                <ul v-show="getCarInfo" class="getCarInfo animate fadeIn showContent">
                    <div class="eachCarInfo">
                        <h3>{{ car.name }}</h3>
                        <h4>{{ car.date }}</h4>
                        <h5>{{ car.price }}</h5>
                    </div>
                </ul>
            </div>
        </section>

    `,

    data() {
        return {
            getCarInfo: false
        }
    },

    methods: {
    }
}