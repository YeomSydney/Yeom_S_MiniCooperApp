// components get imported here first
import WhiteMini from './components/TheMiniWhite.js';
import RedMini from './components/TheMiniRed.js';
import BlueMini from './components/TheMiniBlue.js';
import GreenMini from './components/TheMiniGreen.js';
import BlackMini from './components/TheMiniBlack.js';

(() => {
    const { createApp } = Vue

    createApp({
        created() {
            console.log('vue instance is created');

            fetch('./data.json')
                .then(res => res.json())
                .then(data => this.miniAppData = data)
            .catch(error => console.error(error));
        },

        data() {
            return {
                miniAppData: {},
                buildNPrice: {},
                // showPopup: false,
                showCars: false
            }
        },

        methods: {
            showCars(data) {
                console.table(date)
                this.buildNPrice = data;
            }
        },

        components: {
            whitemini: WhiteMini,
            redmini: RedMini,
            bluemini: BlueMini,
            greenmini: GreenMini,
            blackmini: BlackMini
        }
    }).mount('#app')
})()