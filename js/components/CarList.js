export default {
    name: 'CarList',

    props: {
        car: Object
    },

    template:
    `
        <section class="carSelection">
            <div class="carsList">
                <div class="carsList-inside">
                    <div class="carsList-box">
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
                            <!-- <button @click="like"><i class="ri-heart-line"></i></button> -->
                        </div>
                    </div>
                </div>
        
                <ul v-show="getCarInfo" class="getCarInfo animate fadeIn showContentNInfo getMiniInfo">
                    <div class="eachCarInfo">
                        <p class="avail">Available</p>
                        <p class="name">{{ car.name }}</p>
                        <p class="date"><span class="custom">{{ car.date }}</span></p>

                        <div class="specs">
                            <div class="miniPrice">
                                <h3 class="priceTitle">PRICE</h3>

                                <div class="priceContainer">
                                    <div class="priceBox priceBox1">
                                        <p class="price">
                                        <span class="startingFrom">Starting From:</span><br>
                                        {{ car.price }}</p>
                                    </div>

                                    <div class="priceBox priceBox2">
                                        <p class="monthly">
                                        <span class="startingFrom">Starting From(Monthly):</span><br>
                                        {{ car.monthly }}</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="miniColours">
                                <h3 class="colourTitle">COLOURS</h3>

                                <div class="colourContainer">
                                    <div class="colourBox colourBox1">
                                        <div class="colourDetails">
                                            <h4>Outdoor</h4>
                                            <p class="carColour">{{ car.colour }}</p>
                                        </div>
                                    </div>

                                    <div class="colourBox colourBox2">
                                        <div class="colourDetails">
                                            <h4>Indoor</h4>
                                            <p class="seatColour">{{ car.seatColour }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="miniExtra">
                                <div class="miniFuel">
                                    <h4>FUEL TYPE</h4>
                                    <p class="fuelType">{{ car.fuelType }}</p>
                                </div>

                                <div class="miniSeat">
                                    <h4>SEAT</h4>
                                    <p class="seatCount">{{ car.seatCount }}</p>
                                </div>
                            </div>
                        </div>
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