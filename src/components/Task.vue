<script setup>

import { defineProps } from 'vue';

const taskComponent = defineProps({
    task: Object,
});

</script>

<template>

    <li>
        {{ task.text }}
        <input type="checkbox" v-model="task.completed" :key="task.id"/>
    </li>

</template>

<style scoped>

</style>
