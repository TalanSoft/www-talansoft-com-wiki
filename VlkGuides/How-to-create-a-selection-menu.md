In this guide you will learn how to create a selection menu using a DataTable and Primitives.

It is recommended to read the following guides before starting this tutorial:
- Creating a User Interface Layer
- Understanding Object hierarchies
- Understanding DataTables

[**Vlk Project Download**](https://cdn2.talansoft.com/ftp/samples/Selection-Menu-Tutorial.zip)

---

In the Entity Library, Drag & Drop a DataTable into the Center-Anchor Dummy.
![step_01](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_01.gif)
The position of this Dummy object is controlled by the ViewportAnchor action and is configured to be at the center of the screen.

---

Now we need to make the DataTable relative to its parent object (Center-Anchor) & center it.
- Click on the **[DataTable](Vlk/Entity/DataTable)** in the timeline.
- In the inspector, turn on the **Relative** flag.
- Click on **SetIdentity** to move the **DataTable** to the same position as its parent object (Center-Anchor).
![step_02](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_02.gif)

---

The next step is to create our buttons.

In the Entity Library, Drag & Drop a **Primitive** into the **DataTable** and turn on the **Relative** flag.
![step_03](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_03.gif)

---

The default shape of a primitive is a **Box**.
In this tutorial we will change the shape to a **Sphere**.
![step_04](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_04.gif)

---

We are going to create 5 buttons but as you can notice the first one is quite big so we'll make it smaller.
Click on the **Primitive** and change its scale to 0.4.
![step_05](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_05.gif)

---

Let's copy this primitive 4 times.
![step_06](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_06.gif)

---

And give them a different colors
![step_07](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_07.gif)

---

It's time to make the buttons interactive.
- First, let's make the buttons clickable by Drag & Dropping the **EnterRayHit** event onto each button.
![step_08](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_08.gif)

The **EnterRayHit** event allows entities to detect clicks and is triggered every time a click is detected. So now, all of the **Primitives** are clickable but we need to specify what happens when they are clicked.

---

Before we proceed, we need to create a property in the **DataTable** that will store the buttons when they are clicked.
- Select the **[DataTable](VlkEntity/DataTable)** and click on the **+** icon at the bottom right of the inspector.
- A dialog box will ask you to choose a name for the property. You can name the property with the name of your choice but in this case we'll name it **buttom_name**.
![step_09](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_09.gif)

---

The interaction we'll create will store the name of the clicked button into the **button_name** property of the **DataTable**.

- **Drag & Drop** the **EntitySetProperty** Action into one of the **EnterRayHit** Event
- Set **end_time** Property to **0.1** seconds
- **Drag & Drop** the **DataTable** into the **Target** field
- Set the **property** to **button_name**
- Set the **type** to **String**
- In the **start_expr** field, type in the following expression: **dt://./@name**
![step_10](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_10.gif)

---

- Let's rename the description of the action by editing the **desc** field. In this case we'll call it **Set-Name**
- Copy & Paste this action into the all of the **EnterRayHit** Events
- Hit the **Play** icon or press **CTRL + Spacebar** & Select the **DataTable** in the timeline

![step_11](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_11.gif)
Now every time we click on a button, the **EntitySetProperty** action is going to write the name of the clicked button into the **button_name** property of the **DataTable**. In other words, the **DataTable** knows which button the user has clicked.

---

We are now going to create a rule to define what happens when the **button_name** value of the **DataTable** changes.
- First let's create a new **Primitive** with a **Plane** shape.
![step_12](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_12.gif)

---

- Let's make it **Relative** and scale it down to 0.6.
- We can also add a PNG texture of a circle to make it stand out. Click on the **Translucent** & **No Lighting** flags in the Material Editor.
![step_13](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_13.gif)

---

All that's left to do is to move this **Primitive** with the white circle texture at the location of the button that was clicked.

To achieve this, let's create a **PropertyChanged** event into the **DataTable**.
- Set the **Property** to **button_name**
- Set the **Type** to **String**
- Delete the **Value** field
- Set **Compare** to **Always**

![step_14](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_14.gif)
The **PropertyChanged** event will always be triggered when the **button_name** property of the **DataTable** changes.

---

Now let's define what happens when the **PropertyChanged** event is triggered.
- Drag & Drop the **AnimMoveTo** action into the **PropertyChanged** event
- Drag & Drop the **Primitive** with the white circle texture into the **target**
- Set the **dest** to **dt://./@button_name**
- Set the **spring_s** value to **250**
- Set the **end_time** to **1** second
![step_15](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_15.gif)

---

Now, every time you click on a button, the white circle will automatically move to the position of the clicked button
![step_16](https://cdn2.talansoft.com/ftp/img/selection_menu_tutorial/selection_menu_16.gif)
