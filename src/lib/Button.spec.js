import { render, screen } from '@testing-library/svelte';
import userEvent from '@testing-library/user-event';
import Button from './Button.svelte';

describe('Button component', () => {
	it('renders a button', async () => {
		render(Button);

		expect(screen.getByRole('button')).toHaveTextContent('Click me');
	});

	it('triggers an event when clicked', () => {
		const { component } = render(Button);
		const callback = jest.fn();
		component.$on('click', callback);

		userEvent.click(screen.getByRole('button'));

		expect(callback).toHaveBeenCalled();
	});
});
