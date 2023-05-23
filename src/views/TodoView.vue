

<template>
    <div class="card" v-for="data in state.data">
        <p>{{ data._id }}</p>
        <p>{{ data.content }}</p>
        <div class="button-group">
            <Button @onClick="edit" title="Edit"></Button>
            <Button @onClick="deleteTodo(data._id)" title="Delete"></Button>
        </div>
    </div>
</template>

<style scoped>
.card {
    padding: 1rem;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 1rem;
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    justify-items: center;
}

.button-group {
    display: flex;
    flex-direction: row;
    gap: 0.5rem;
    justify-items: center;
}
</style>
<script setup lang="ts">
import { onMounted, reactive } from 'vue'
import { Button } from '../components/index.js';
import { http } from '../services/index.js'
import { ITodo } from '../interfaces/index.js'

const state = reactive<{ data: ITodo[] }>({ data: [] })

onMounted(async () => {
    get();
})

const edit = () => {
    console.log("edit");
}

const get = async () => {
    const { status, data } = await http.get("todo");
    if (status === 200) state.data = data;
}

const deleteTodo = async (_id: string) => {
    const { status } = await http.destroy(`todo/${_id}`)
    if (status === 200) get();
}

</script>