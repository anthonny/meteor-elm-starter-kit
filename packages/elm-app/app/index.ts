const { Elm } = require('./src/Main.elm');

/* 
  We should add the definition of Flags
  If you don't use Flags, remove this interface 
  and change the definition of flags in Configuration to
  flags: {}
  or you can also remove flags and use a default value
  in Elm.Main.init
*/
// eslint-disable-next-line @typescript-eslint/no-empty-interface
interface Flags {}

export interface Configuration {
    node: HTMLElement | null;
    flags: Flags;
}

/* 
  We should add the definition of Ports
  If you don't use Ports, change the returned type to void
*/
// eslint-disable-next-line @typescript-eslint/no-empty-interface
export interface Ports {}

export const init: (configuration: Configuration) => Ports = (configuration) => {
    const app = Elm.Main.init(configuration);
    return app.ports;
};
