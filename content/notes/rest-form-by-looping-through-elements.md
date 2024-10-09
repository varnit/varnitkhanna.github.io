---
title: "Reset form by looping through elements"
date: "2007-05-31"
categories: 
  - "javascript"
---

Function to reset form values.

> ```
> function resetForm(theForm){
>     for(i=0; i<theForm.elements.length; i++)
>     {
>         if(theForm.elements[i].type == "text")
>         {
>             theForm.elements[i].value = '';
>         }
>         else if(theForm.elements[i].type == "select-one")
>         {
>             theForm.elements[i].selectedIndex = 0;
>         }
>     }
> }
> ```

other possible form elements: textarea, checkbox
