<script>
export default {
  data() {
    return {
      username: '',
      password: '',
    };
  },
};
</script>

<template>
  <form action="/login?to=/user" method="POST">
    <label for="username">Username</label>
    <input type="text" v-model="username" name="username" />
    <label for="password">Password</label>
    <input type="password" v-model="password" name="password" />
    <input type="submit" />
  </form>
</template>

<style>
label,
input {
  display: block;
}

input {
  margin-bottom: 10px;
}

label {
  text-align: left;
}

form {
  /* border: 1px solid darkgrey; */
  padding: 20px;
  width: fit-content;
  /* background-color: lightgrey; */
}
</style>
