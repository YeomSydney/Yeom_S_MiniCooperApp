export default {
    name: 'TheMiniWhite',

    props: {
        car: Object
    },

    template:
    `
        <section>
            <!-- <img :src='"images/" + car.thumbnail' alt="car image" class="miniCars"> -->
            <img :src='"images/" + car.thumbnail' alt="car image" class="miniCars">

            <div class="carInfo">
                <h3>{{ car.name }}</h3>
                <h4>{{ car.date }}</h4>
                <h5>{{ car.price }}</h5>

                <div class="carDetails">
                <div class="seat">
                    <p>Seat<br>{{ car.seatCount }}</p>
                </div>
                
                <div class="seatColours">
                    <p>Interior<br>{{ car.seatColour }}</p>
                </div>
                
                <div class="fuel">
                    <p>Fuel Type<br>{{ car.fuelType }}</p>
                </div>
                
                <div class="monthly">
                    <h3>Monthly Payment Starting From<br>{{ car.monthly }}</h3>
                </div>

                </div>
            </div>
        </section>

    `,

    methods: {
        
    }
}