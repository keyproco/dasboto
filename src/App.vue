<script setup>
import { ref } from 'vue';
  const todos = ref([
  {
    text: 'Workout',
    completed: false,
  },
  {
    text: 'Learn',
    completed: false,
  },
  {
    text: 'Love',
    completed: false,
  },
  {
    text: 'Work',
    completed: false,
  },
  {
    text: 'Travel',
    completed: false,
  },
  {
    text: 'Simrace',
    completed: false,
  },
]);

</script>

<template>
  <section class="h-full grid place-items-center">
    <div class="p-3">
      <h1 class="front-bold" >Todos:</h1>
      <ul class="list-disc">
        <li v-for="todo in todos" :key="todo.id">
          {{ todo.text }}
          <input type="checkbox" v-model="todo.completed" />
        </li>
      </ul>
    </div>
    {{ todos }}
  </section>
</template>

<style scoped>

</style>
