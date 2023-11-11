<script setup>

import { defineProps } from 'vue';

const taskComponent = defineProps({
    tasks: Array,
});

</script>

<template>

    <li v-for="task in tasks" :key="task.id">
        {{ task.text }}
        <input type="checkbox" v-model="task.completed" :key="task.id"/>
    </li>
</template>

<style scoped>

</style>
