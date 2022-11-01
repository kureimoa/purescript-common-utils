import pluralize from 'pluralize';
import { snakeCase } from 'snake-case';
import { pascalCase } from 'pascal-case';
import { constantCase } from 'constant-case';

export const plural = (word) => pluralize(word);
export const snakeCase = (word) => snakeCase(word);
export const pascalCase = (word) => pascalCase(word);
export const constantCase = (word) => constantCase(word);
