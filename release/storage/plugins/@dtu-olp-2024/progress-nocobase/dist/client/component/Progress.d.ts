import React from 'react';
/**
 * Progress component wrapped with dynamic schema properties
 *
 * This component utilizes the `AntdProgress` from 'antd' to display a progress bar. The percentage
 * of completion is calculated based on the `current` and `target` values derived from the `useProgressData` hook.
 *
 * The percentage is capped between 0 and 100 to ensure valid rendering of the progress bar.
 *
 * Display of the current amount in VND currency format and the percentage against the target
 * amount is shown above the progress bar.
 *
 * Custom styles are applied to both the progress bar and the formatting section to maintain
 * visual coherence and alignment in the UI.
 *
 * Hooks:
 * - `useProgressData`: Custom hook to fetch and compute the `current` and `target` values from
 *   data using `useDataBlockRequest`.
 *
 * Dependencies:
 * - `withDynamicSchemaProps`: A higher-order component to enhance with dynamic schema properties.
 * - `formatVND`: Utility function to format numbers as Vietnamese Dong currency.
 *
 * @returns {JSX.Element} A rendered progress bar representing the fiscal progress towards a goal.
 */
export declare const Progress: React.FunctionComponent<any>;
