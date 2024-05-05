import tkinter
import customtkinter
from pytube import YouTube

root = customtkinter.CTk()
customtkinter.set_appearance_mode("System")
customtkinter.set_default_color_theme("blue")
root.title("Youtube video downloader")
root.geometry("720x480")


def startdownload():
    try:
        ytlink = entry.get()
        ytObject = YouTube(ytlink)
        video = ytObject.streams.get_highest_resolution()
        video.download()
        print("Download complete")
    except:
        print("Invalid Link")


label = customtkinter.CTkLabel(root, text="Welcome to my Youtube downloader", text_color="yellow")
label.pack()

link = tkinter.StringVar()
entry = customtkinter.CTkEntry(root, height=40, width=350, textvariable=link)
entry.pack(padx=10, pady=10)

btn = customtkinter.CTkButton(root, text="Download", command=startdownload)
btn.pack()

root.mainloop()