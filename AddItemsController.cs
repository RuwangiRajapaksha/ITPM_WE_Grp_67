using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ItemItp.Models;

namespace ItemItp.Controllers
{
    public class AddItemsController : Controller
    {
        private CRUDWITHEFEntities db = new CRUDWITHEFEntities();

        // GET: AddItems
        public ActionResult Index()
        {
            return View(db.AddItems.ToList());
        }

        // GET: AddItems/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AddItem addItem = db.AddItems.Find(id);
            if (addItem == null)
            {
                return HttpNotFound();
            }
            return View(addItem);
        }

        // GET: AddItems/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AddItems/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ItemId,Item_Name,Category,Price,Location,Contact")] AddItem addItem)
        {
            if (ModelState.IsValid)
            {
                db.AddItems.Add(addItem);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(addItem);
        }

        // GET: AddItems/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AddItem addItem = db.AddItems.Find(id);
            if (addItem == null)
            {
                return HttpNotFound();
            }
            return View(addItem);
        }

        // POST: AddItems/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ItemId,Item_Name,Category,Price,Location,Contact")] AddItem addItem)
        {
            if (ModelState.IsValid)
            {
                db.Entry(addItem).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(addItem);
        }

        // GET: AddItems/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AddItem addItem = db.AddItems.Find(id);
            if (addItem == null)
            {
                return HttpNotFound();
            }
            return View(addItem);
        }

        // POST: AddItems/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AddItem addItem = db.AddItems.Find(id);
            db.AddItems.Remove(addItem);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
