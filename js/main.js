// components get imported here first
import CarList from './components/CarList.js';
import eachCarInfo from './components/eachCarInfo.js';

(() => {
    const { createApp } = Vue

    createApp({
        created() {
            console.log('vue instance is created');

            fetch('./scripts/json.php')
            // fetch('./data.json')
                .then(res => res.json())
                .then(data => this.miniAppData = data)
            .catch(error => console.error(error));
        },

        data() {
            return {
                miniAppData: {},
                // showPopup: false,
                showCars: false,
                getCarInfo: false
            }
        },

        methods: {
            // showCars(data) {
            //     console.table(date)
            //     this.buildNPrice = data;
            // }
        },

        components: {
            carlist: CarList,
            eachcarinfo: eachCarInfo
        }
    }).mount('#app')
})()