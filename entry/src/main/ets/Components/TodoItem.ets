export class TodoItem {
  id: number;
  content: string;
  completed: boolean;
  isEditing: boolean;

  constructor(id: number, content: string, completed: boolean = false) {
    this.id = id;
    this.content = content;
    this.completed = completed;
    this.isEditing = false;
  }
}