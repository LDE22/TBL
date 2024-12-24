using Microsoft.Maui.Controls;

namespace TBL.Controls
{
    public class HybridWebView : WebView
    {
        public Action<string> Action { get; private set; }

        public void RegisterAction(Action<string> action)
        {
            Action = action;
        }

        public void Cleanup()
        {
            Action = null;
        }

        public void InvokeAction(string data)
        {
            if (Action == null || data == null)
            {
                return;
            }

            Action.Invoke(data);
        }
    }
}
