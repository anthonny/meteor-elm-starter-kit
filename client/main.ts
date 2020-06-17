import { init } from "meteor/elm-app";
import { Meteor } from "meteor/meteor";

Meteor.startup(() => {
  const ports = init({
    node: document.getElementById("main"),
    flags: {},
  });
});
