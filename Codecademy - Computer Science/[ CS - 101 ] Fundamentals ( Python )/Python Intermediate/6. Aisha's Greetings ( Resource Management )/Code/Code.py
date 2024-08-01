
from contextlib import contextmanager

@contextmanager
def generic(card_type, sender_name, recipient_arg):
  open_card = open(card_type, 'r')
  new_card = open(f"{sender_name}_generic.txt", 'w')
  try:
    new_card.write(f"Dear {recipient_arg}, \n")
    new_card.write(open_card.read())
    new_card.write(f"\n  \n       -----Sincerely {sender_name} \n")
    yield new_card

  finally:
    open_card.close()
    new_card.close()

with generic("thankyou_card.txt", "Mwenda", "Amanda") as order1:
  print('Card Generated! \n')

with open("Mwenda_generic.txt", "r") as first_order:
  print(first_order.read())

class personalised:
  def __init__(self, sender_name, receiver_name):
    self.file = open(f"{sender_name}_personalised.txt", 'w')
    self.sender_name = sender_name
    self.receiver_name = receiver_name

  def __enter__(self):
    self.file.write(f"Dear {self.receiver_name}, \n \n")
    return self.file

  def __exit__(self, exc_type, exc_value, Traceback):
    self.file.write(f"\n \n  Sincerely {self.sender_name}, \n")
    self.file.close()

with personalised("John", "Michael") as card:
  card.write("I am so proud of you! Being your friend for all these years has been nothing but a blessing. I don’t say it often but I just wanted to let you know that you inspire me and I love you! All the best. Always.")


with generic("happy_bday.txt","Josiah","Remy" ) as card, personalised("Josiah","Esther") as card2:
  card2.write("Happy Birthday!! I love you to the moon and back. Even though you’re a pain sometimes, you’re a pain I can't live without. I am incredibly proud of you and grateful to have you as a sister. Cheers to 25!! You’re getting old!")

  