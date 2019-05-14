using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// LocationForJson 的摘要说明
/// </summary>
public class LocationForJson
{
    public LocationForJson()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
}
public class Address_detail
{
    /// <summary>
    /// 山东省
    /// </summary>
    public string province { get; set; }
    /// <summary>
    /// 济南市
    /// </summary>
    public string city { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public string district { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public string street { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public string street_number { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public int city_code { get; set; }
}

public class Point
{
    /// <summary>
    /// 
    /// </summary>
    public string y { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public string x { get; set; }
}

public class Content
{
    /// <summary>
    /// 
    /// </summary>
    public Address_detail address_detail { get; set; }
    /// <summary>
    /// 山东省济南市
    /// </summary>
    public string address { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public Point point { get; set; }
}

public class Root
{
    /// <summary>
    /// CN|山东|济南|None|UNICOM|0|0
    /// </summary>
    public string address { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public Content content { get; set; }
    /// <summary>
    /// 
    /// </summary>
    public int status { get; set; }
}