<script setup>
import { ref, computed} from 'vue';
  const todos = ref([
  {
    text: 'Workout',
    completed: false,
  },
  {
    text: 'Learn',
    completed: false,
    id: 1
  },
  {
    text: 'Love',
    completed: false,
    id: 2
  },
  {
    text: 'Work',
    completed: false,
    id: 3
  },
  {
    text: 'Travel',
    completed: false,
    id: 4
  },
  {
    text: 'Simrace',
    completed: false,
    id: 5
  },
]);


const completedTodos = computed(() => {
  return todos.value.filter(todo => todo.completed)
});

const wipTodos = computed(() => {
  return todos.value.filter(todo => ! todo.completed)
});
</script>

<template>
  <section class="h-full grid place-items-center">
    <div v-show="wipTodos.length" class="p-3">
      <h1 class="front-bold" >Todos:</h1>
      <ul class="list-disc">
        <li v-for="todo in wipTodos" :key="todo.id">
          {{ todo.text }}
          <input type="checkbox" v-model="todo.completed" :key="todo.id"/>
        </li>
      </ul>

    </div>
    <div v-show="completedTodos.length"  class="p-3">
      <h1 class="front-bold" >Completed Tasks:</h1>
      <ul class="list-disc">
        <li v-for="todo in completedTodos" :key="todo.id">
          {{ todo.text }}
          <input type="checkbox" v-model="todo.completed" />
        </li>
      </ul>
    </div>
  </section>
</template>

<style scoped>

</style>
