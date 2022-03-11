import interface

def read_data() -> None:
    data = input()
    msg = interface.Msg.from_json_string(data)
    print(msg.subject)

read_data()
