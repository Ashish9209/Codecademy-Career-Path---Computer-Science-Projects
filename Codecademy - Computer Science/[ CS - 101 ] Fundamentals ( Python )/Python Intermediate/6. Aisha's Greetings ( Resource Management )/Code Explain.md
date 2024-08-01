This code demonstrates the use of context managers to create and manage greeting card files. The `generic` function is a context manager that opens a card template file, writes a personalized message with a sender and recipient name, and then closes the file. The `personalised` class is another context manager that writes a custom message to a personalized card file, handling the file opening and closing operations.

1. **Generic Card Creation**: The `generic` function reads a template file (e.g., "thankyou_card.txt"), writes a personalized message to a new file named after the sender, and ensures that both the input and output files are closed properly after writing.

2. **Personalized Card Creation**: The `personalised` class is used to create a card with a specific message. It writes the recipient's name at the beginning and the sender's name at the end of the card, ensuring the file is closed properly.

3. **Usage**:
   - The `generic` context manager is used to generate a thank-you card for "Amanda" from "Mwenda".
   - The `personalised` context manager is used to create a personal message from "John" to "Michael".
   - Both context managers are used together to generate a birthday card for "Remy" and a personalized message for "Esther" from "Josiah".

The code demonstrates how to manage file operations and resource cleanup efficiently using Python's `contextlib` module and context manager protocol.