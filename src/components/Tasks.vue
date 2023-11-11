<script setup>

import { ref, computed} from 'vue';

import TaskList from './TaskList.vue';

  const tasks = ref([
  {
    text: 'Workout',
    completed: true,
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


const completedTasks = computed(() => {
	return tasks.value.filter(task => task.completed)
});


const wipTasks = computed(() => {
	return tasks.value.filter(task => ! task.completed)
});


</script>

<template>
	<TaskList :tasks="wipTasks" title="Uncompleted Tasks" />
	<TaskList :tasks="completedTasks" title="Completed Tasks" />
</template>

<style scoped>

</style>
