<template>
  <div id="app">
    <h1>Minha primeira aplicação pwa usando vuejs</h1>
    <p>é so um teste</p>
    <img src="https://cdn.pixabay.com/photo/2020/03/23/08/45/cat-4959941__340.jpg" alt="gato">
  </div>
</template>

<script>


export default {
  name: 'App',
  components: {
    
    
  },
    created() {
    if (this.$workbox) {
      this.$workbox.addEventListener("waiting", () => {
        this.showUpgradeUI = true;
      });
    }
  },

  methods: {
    async accept() {
      this.showUpgradeUI = false
      await this.$workbox.messageSW({ type: "SKIP_WAITING" });
    }
  },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
img{
  border-radius: 10px;
}
</style>
