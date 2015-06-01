#include<stdio.h>
#include<conio.h>
void main(){
    struct animal{
        int age;
        char name[10];
        char gender;
    }a[10];
    
    int no,i;
    clrscr();
    
    printf("Enter the number of animals: ");
    scanf("%d",&amp;no);
    
    for(i=0;i&lt;no;i++){
        printf("\nEnter the age of animal %d: ", i+1);
        scanf("%d",&amp;a[i].age);
        printf("\nEnter the name of animal %d: ",i+1);
        scanf("%s",&amp;a[i].name);
        printf("\nEnter the gender(M/F) of animal %d: ",i+1);
        scanf("%s",&amp;a[i].gender);
    }
    
    for(i=0;i&lt;no;i++){
        printf("\n%d",a[i].age);
        printf("\t%s",a[i].name);
        printf("\t%c",a[i].gender);
    }
    
    getch();
}
