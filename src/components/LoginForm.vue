<script>
export default {
  data() {
    return {
      username: "",
      password: "",
    };
  },
};
</script>

<template>
  <div class="login-container">
    <form action="/login?to=/vm" method="POST">
      <label for="username">Username</label>
      <input type="text" v-model="username" name="username" />
      <label for="password">Password</label>
      <input type="password" v-model="password" name="password" />
      <input type="submit" />
    </form>
  </div>
</template>

<style>
label,
input {
  display: block;
  width: 100%;

}

input {
  margin-bottom: 10px;
    /* max-width: 500px; */
}

label {
  /* text-align: left; */
}

.login-container {
  text-align: center;
  padding: 20px;
  width: 100%;
}
</style>
