import { Plugin } from '@nocobase/client';
export declare class ProgressNocobaseClient extends Plugin {
    /**
     * Asynchronously loads the ProgressNocobaseClient plugin.
     *
     * This function enhances the application by adding relevant scopes, components, and schema configurations specific
     * to the progress module. It registers block scope decorators and progress block properties to extend the application's
     * block functionality, adds the Progress component to the set of available UI components, and integrates progress-specific
     * schema settings. Additionally, it registers an initializer item to handle the addition of blocks within pages, using the
     * provided `progressInitializerItem`.
     */
    load(): Promise<void>;
}
export default ProgressNocobaseClient;
