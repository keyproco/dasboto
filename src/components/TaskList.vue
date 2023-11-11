<script setup>

import { defineProps } from 'vue';

import Task from './Task.vue'

const taskList = defineProps({
    tasks: Array,
    title: String
});
</script>

<template>
    <section class="h-full grid place-items-center">
        <div v-show="tasks.length" class="p-3">
            <h1 class="front-bold" >{{ title }}</h1>

            <ul class="list-disc">
                <Task v-for="task in tasks" :key="task.id" :task="task"></Task>
            </ul>

        </div>
    </section>
</template>

<style scoped>

</style>
