
<template>
  <div class="container">
    <div class="button-group">
      <Button @onClick="goToCreate" title="Create"></Button>
    </div>
    <router-view></router-view>
  </div>
</template>

<style scoped>
.container {
  height: 100vh;
  padding: 1rem;
}
</style>
<script setup lang="ts">
import { useRouter } from 'vue-router';
import { Button } from './components';
const router = useRouter()

const goToCreate = () => {
  router.push('');
}

</script>