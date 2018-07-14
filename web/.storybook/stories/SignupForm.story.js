import React from 'react';
import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import SignupForm from '../../../src/components/shared/SignupForm';

storiesOf('SignupForm', module)
  .add('default', () => (<SignupForm />))
);