

<template>
    <button @click="$emit('onClick')">{{ title }}</button>
</template>

<style scoped>
button {
    background-color: gray;
    border-radius: 10px;
    border: none;
    color: white;
    padding: 0.5rem 1rem;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    width: fit-content;
    font-size: 16px;
}
</style>
<script  setup lang="ts">
import { defineProps, withDefaults } from 'vue'
interface IButtonProps {
    title: string
}

const { title } = withDefaults(defineProps<IButtonProps>(), {
    title: '',
    labels: () => { }
})
</script>