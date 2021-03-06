import doom.html.Html.*;
import Helpers.*;
using thx.Objects;

class Multi extends doom.html.Component<{ a : String, b : String, c : String }> {
  override function render() {
    return ul([
      li(createEditor(props.a, "markdown", function(editor) {
        var value = editor.getValue();
        update(props.merge({ a : value }));
      })),
      li(createEditor(props.b, "javascript", function(editor) {
        var value = editor.getValue();
        update(props.merge({ b : value }));
      })),
      li(createEditor(props.c, "http", function(editor) {
        var value = editor.getValue();
        update(props.merge({ c : value }));
      }))
    ]);
  }
}
