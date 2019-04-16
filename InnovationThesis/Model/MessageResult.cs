using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InnovationThesis.Model
{
    public enum ErrorCode
    {
        E,
        W,
        S
    }

    public class MessageResult
    {
        public ErrorCode ErrorCode {  get; set; }
        public string Message { get; set; }
    }
}