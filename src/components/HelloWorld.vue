<template>
  <div class="hello">
    <h1>TEST GITHUB PAGES WITH VUE.JS</h1>
    <button @click="fetchData">Click Me!</button>
    <p v-if="fact">{{ fact }}</p>
  </div>
</template>
<script>
export default {
  props: {
    msg: String,
  },
  data() {
    return {
      fact: "",
    };
  },
  methods: {
    fetchData() {
      fetch('https://facts-by-api-ninjas.p.rapidapi.com/v1/facts', {
        method: "GET",
        headers: {
          "X-RapidAPI-Key": 'def8a62c73msh4fd32cc4ffe9745p1c60ffjsn7b6eaad8e540',
          "X-RapidAPI-Host": 'facts-by-api-ninjas.p.rapidapi.com',
        },
      })
        .then((response) => {
          response.json().then((data) => {
            this.fact = data[0].fact;
          });
        })
        .catch((err) => {
          console.error(err);
        });
    },
  },
};
</script>
<style>
button {
padding: 12px 32px;
font-size: 16px;
border-radius: 8px;
}
</style>