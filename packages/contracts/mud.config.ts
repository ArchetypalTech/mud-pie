import { defineWorld } from "@latticexyz/world";

export default defineWorld({
  namespace: "app",

  systems: {
    IncrementSystem: {
      name: "increment",
      openAccess: true,
    },
  },

  tables: {
    Counter: {
      schema: {
        value: "uint32",
      },
      key: [],
    },
  },
});
