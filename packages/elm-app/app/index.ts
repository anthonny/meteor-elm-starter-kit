import "./main.scss";
const { Elm } = require("./src/Main.elm");

interface Flags {}

export interface Configuration {
  node: HTMLElement | null;
  flags: Flags;
}

export interface Ports {}

export const init: (configuration: Configuration) => Ports = (
  configuration
) => {
  const app = Elm.Main.init(configuration);
  return app.ports;
};
